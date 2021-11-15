package flp.dev.logger;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Context;
import android.os.Bundle;

import flp.dev.lib.Log;
import flp.dev.lib.LogExternalInterface;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        Log.init(new LogExternalInterface() {
            @Override
            public Context getContext() {
                return MainActivity.this.getApplicationContext();
            }
        }, true);
        for (int i = 0; i< 100; i++) {
            Log.d("Main", "hola" + i, true);
        }
        Log.zipLogs();
        //Log.purge();

    }
}