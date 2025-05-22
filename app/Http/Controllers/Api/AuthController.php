<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\Models\User;

class AuthController extends Controller
{
    // Funcion de Registro
    public function register(Request $request)
    {
        try {
            $validator = \Validator::make($request->all(), [
                'name' => 'required',
                'email' => 'required|email|unique:users',
                'password' => 'required|min:6'
            ]);

            if ($validator->fails()) {
                return response()->json([
                    'errors' => $validator->errors()
                ], 422);
            }

            $user = User::create([
                'name' => $request->name,
                'email' => $request->email,
                'password' => bcrypt($request->password)
            ]);

            return response()->json([
                'user' => $user,
                'token' => $user->createToken('api-token')->plainTextToken
            ], 201);
        } catch (\Exception $e) {
            return response()->json([
                'error' => 'Error interno del servidor'
            ], 500);
        }
    }
    // Funcion de Login
    public function login(Request $request)
    {
        if (!$request->has(['email', 'password']) || empty($request->email) || empty($request->password)) {
            return response()->json(['error' => 'El request está vacío o faltan campos requeridos'], 400);
        }
        $credentials = $request->only('email', 'password');

        $user = User::where('email', $credentials['email'])->first();
        if (!$user) {
            return response()->json(['error' => 'Usuario no encontrado'], 404);
        }
        // Intentar autenticación
        if (!auth()->attempt($credentials)) {
            return response()->json(['error' => 'Credenciales incorrectas'], 401);
        }

        return response()->json(['user' => $user,'token' => auth()->user()->createToken('api-token')->plainTextToken]);
    }
}
