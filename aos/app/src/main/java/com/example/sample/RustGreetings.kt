package com.example.sample

class RustGreetings {
    companion object{
        init {
            System.loadLibrary("rust_bevy_baios")
        }
        @JvmStatic
        private external fun greeting(pattern: String): String;
    }

    fun sayHello(to: String): String {
        return greeting(to);
    }
}