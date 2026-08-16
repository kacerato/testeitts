package com.itsmagic.engine.Activities.Editor;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import b3.s;
import com.itsmagic.engine.Core.Components.JCompiler.JavaMetaInfo;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.JavaComponent.JavaComponent;
import com.itsmagic.engine2.R;
import d8.g;
import d8.j;
import d8.m;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.Writer;
import java.util.LinkedList;
import java.util.List;

public class TextOutputActivity extends AppCompatActivity {

    public class a implements Runnable {

        public final Throwable f71948b;

        public final Activity f71949c;

        public a(final Throwable val$e, final Activity val$context) {
            this.f71948b = val$e;
            this.f71949c = val$context;
        }

        @Override
        public void run() {
            TextOutputActivity.i(this.f71948b, this.f71949c);
        }
    }

    public class b extends Writer {

        public final List f71950b;

        public b(final List val$compillerOutputs) {
            this.f71950b = val$compillerOutputs;
        }

        @Override
        public void close() throws IOException {
        }

        @Override
        public void flush() throws IOException {
        }

        @Override
        public void write(char[] cbuf, int off, int len) throws IOException {
            this.f71950b.add(new String(cbuf, off, len));
        }
    }

    public class c implements View.OnClickListener {
        public c() {
        }

        @Override
        public void onClick(View view) {
            System.exit(0);
        }
    }

    public static void h(Throwable e10) {
        Activity o10 = N7.c.o();
        if (N7.c.N()) {
            i(e10, o10);
        } else {
            o10.runOnUiThread(new a(e10, o10));
        }
    }

    public static void i(Throwable e10, Activity context) {
        List<String> j10 = j(e10);
        String str = "";
        for (int i10 = 0; i10 < j10.size(); i10++) {
            if (i10 > 0) {
                str = str + "\n";
            }
            str = str + j10.get(i10);
        }
        Intent intent = new Intent(context, (Class<?>) TextOutputActivity.class);
        intent.putExtra("text", str);
        N7.c.p0(intent);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static List<String> j(Throwable e10) {
        LinkedList linkedList = new LinkedList();
        if (e10.getCause() != null) {
            linkedList.addAll(j(e10.getCause()));
        }
        LinkedList linkedList2 = new LinkedList();
        e10.printStackTrace(new PrintWriter(new b(linkedList2)));
        String name = m.class.getName();
        String name2 = JavaComponent.class.getName();
        for (int i10 = 0; i10 < linkedList2.size(); i10++) {
            String str = (String) linkedList2.get(i10);
            if (str.contains(name + ".execute") || str.contains(name2)) {
                break;
            }
            try {
                if (str.trim().startsWith("at ") && str.contains("(") && str.contains(")")) {
                    String substring = str.substring(str.lastIndexOf("(") + 1);
                    String substring2 = substring.substring(0, substring.lastIndexOf(")"));
                    if (substring2.contains(".java")) {
                        String substring3 = substring2.substring(0, substring2.lastIndexOf(".java"));
                        String substring4 = substring2.substring(substring2.lastIndexOf(s.f32937c) + 1);
                        int w12 = Nc.b.w1(substring4);
                        j jVar = W7.b.f27310j;
                        JavaMetaInfo J10 = j.J(substring3);
                        if (J10 != null) {
                            String[] strArr = J10.compiledCode;
                            String str2 = (strArr == null || strArr.length <= w12) ? "" : strArr[w12];
                            if (str2.endsWith(g.f84387b)) {
                                String substring5 = str2.substring(str2.indexOf("//[I-S]LN=") + 10);
                                w12 = Nc.b.w1(substring5.substring(0, substring5.indexOf(";")));
                            }
                            str = str.replace(s.f32937c + substring4, s.f32937c + w12);
                        }
                    }
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
            String replace = str.replace("JAVARuntime.", "");
            if (!replace.trim().isEmpty()) {
                linkedList.add(replace);
            }
        }
        return linkedList;
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_stack_output);
        TextView textView = (TextView) findViewById(R.id.textView);
        String string = getIntent().getExtras().getString("text");
        if (string == null || string.isEmpty()) {
            throw new NullPointerException("Can't be null or empty");
        }
        textView.setText(string);
        findViewById(R.id.button8).setOnClickListener(new c());
    }

    @Override
    public void onDestroy() {
        System.exit(0);
        super.onDestroy();
    }
}
