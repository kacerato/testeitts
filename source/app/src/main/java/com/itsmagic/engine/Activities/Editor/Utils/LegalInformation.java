package com.itsmagic.engine.Activities.Editor.Utils;

import android.app.Activity;
import android.content.Context;
import android.content.res.AssetManager;
import android.os.Bundle;
import android.text.Html;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.itsmagic.engine.Activities.Editor.Utils.m;
import com.itsmagic.engine2.R;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

public class LegalInformation extends Activity {

    public Context f72033b;

    public class a implements View.OnClickListener {
        public a() {
        }

        @Override
        public void onClick(View v10) {
            LegalInformation.this.finish();
        }
    }

    public final String a() {
        return m.a() == m.a.PT_BR ? b("license html portuguese.txt", this.f72033b).toString() : b("license html english.txt", this.f72033b).toString();
    }

    public final StringBuffer b(String file, Context context) {
        InputStream open;
        BufferedReader bufferedReader;
        StringBuffer stringBuffer = new StringBuffer("");
        BufferedReader bufferedReader2 = null;
        try {
            try {
                try {
                    AssetManager assets = context.getAssets();
                    open = assets != null ? assets.open(file) : null;
                    bufferedReader = new BufferedReader(new InputStreamReader(open));
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (IOException e10) {
                e = e10;
            }
        } catch (IOException e11) {
            e11.printStackTrace();
        }
        try {
            for (String readLine = bufferedReader.readLine(); readLine != null; readLine = bufferedReader.readLine()) {
                stringBuffer.append(readLine);
                stringBuffer.append("\n");
            }
            bufferedReader.close();
            open.close();
            bufferedReader.close();
        } catch (IOException e12) {
            e = e12;
            bufferedReader2 = bufferedReader;
            e.printStackTrace();
            if (bufferedReader2 != null) {
                bufferedReader2.close();
            }
            return stringBuffer;
        } catch (Throwable th3) {
            th = th3;
            bufferedReader2 = bufferedReader;
            if (bufferedReader2 != null) {
                try {
                    bufferedReader2.close();
                } catch (IOException e13) {
                    e13.printStackTrace();
                }
            }
            throw th;
        }
        return stringBuffer;
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(1);
        setContentView(R.layout.activity_legalinfo);
        setFinishOnTouchOutside(true);
        this.f72033b = this;
        ((Button) findViewById(R.id.button18)).setOnClickListener(new a());
        ((TextView) findViewById(R.id.text)).setText(Html.fromHtml(a()));
    }
}
