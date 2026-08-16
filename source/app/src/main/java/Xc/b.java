package Xc;

import android.app.Activity;
import android.content.Context;
import android.text.Editable;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import bd.C3867a;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import com.itsmagic.engine2.R;
import java.io.File;
import java.util.LinkedList;
import java.util.List;
import n7.InterfaceC14361f;
import z7.C16272b;
import z7.InterfaceC16271a;

public class b {

    public View f28256a;

    public Activity f28257b;

    public Context f28258c;

    public LayoutInflater f28259d;

    public Yc.b f28260e;

    public Xc.a f28261f;

    public h7.e f28262g;

    public String f28263h;

    public String f28264i;

    public TextView f28265j;

    public TextInputEditText f28266k;

    public TextInputEditText f28267l;

    public TextInputLayout f28268m;

    public class a implements InterfaceC16271a {

        public final Activity f28269a;

        public final C16272b f28270b;

        public final Xc.a f28271c;

        public class C0784a implements Yc.b {
            public C0784a() {
            }

            @Override
            public void dismiss() {
                a.this.f28270b.b();
            }
        }

        public a(final Activity val$activity, final C16272b val$popupWindow, final Xc.a val$exporterListener) {
            this.f28269a = val$activity;
            this.f28270b = val$popupWindow;
            this.f28271c = val$exporterListener;
        }

        @Override
        public void a(View view, Context context) {
            new b(view, this.f28269a, new C0784a(), this.f28271c);
        }

        @Override
        public void b(String code, Throwable throwable) {
        }

        @Override
        public void onDismiss() {
        }
    }

    public class C0785b implements Yc.d {
        public C0785b() {
        }

        @Override
        public boolean a(File file) {
            return file.isDirectory();
        }
    }

    public class c implements TextView.OnEditorActionListener {
        public c() {
        }

        @Override
        public boolean onEditorAction(TextView v10, int actionId, KeyEvent event) {
            Editable text;
            if (actionId != 6 || (text = b.this.f28267l.getText()) == null) {
                return false;
            }
            b.this.f28263h = text.toString();
            b.this.f28266k.setText((b.this.f28264i + "/" + b.this.f28263h + "." + b.this.f28261f.c()).replace("//", "/"));
            return false;
        }
    }

    public class d implements TextView.OnEditorActionListener {
        public d() {
        }

        @Override
        public boolean onEditorAction(TextView v10, int actionId, KeyEvent event) {
            Editable text;
            if (actionId == 6 && (text = b.this.f28266k.getText()) != null) {
                text.toString();
                Toast.makeText(b.this.f28258c, new C3867a("This feature will be added soon!", "Essa funcionalidade ser\u00e1 adicionado em breve!").toString(), 0).show();
            }
            return false;
        }
    }

    public class e implements InterfaceC14361f {
        public e() {
        }

        @Override
        public void a() {
        }

        @Override
        public List<j7.b> b() {
            return b.this.p();
        }

        @Override
        public void c(j7.b element) {
            b.this.f28262g.A(element);
            if (element == null) {
                b.this.f28268m.setHint("Folder");
                return;
            }
            b bVar = b.this;
            String str = element.f6679a;
            StringBuilder sb2 = new StringBuilder();
            com.itsmagic.engine.Core.Components.ProjectController.a aVar = W7.b.f27302b;
            sb2.append(com.itsmagic.engine.Core.Components.ProjectController.a.S(b.this.f28258c));
            sb2.append("/");
            bVar.f28264i = str.replace(sb2.toString(), "");
            String replace = (b.this.f28264i + "/" + b.this.f28263h + "." + b.this.f28261f.c()).replace("//", "/");
            b.this.f28266k.setText(replace);
            if (replace.isEmpty()) {
                b.this.f28268m.setHint("Folder");
            } else {
                b.this.f28268m.setHint("");
            }
        }

        @Override
        public List<j7.b> d(j7.b eElement) {
            return eElement == null ? b.this.q() : b.this.r(eElement);
        }

        @Override
        public void e(j7.b eElement, int pixelX, int pixelY) {
        }

        @Override
        public List<j7.b> f(j7.b eElement) {
            return b.this.t(eElement);
        }

        @Override
        public void g(j7.b eElement, View v10) {
        }

        @Override
        public void h(j7.b eElement, View v10) {
        }

        @Override
        public void i(View v10, j7.b element) {
            if (element != null) {
                element.f6679a.replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(b.this.f28258c) + "/", "");
            }
        }

        @Override
        public void j(j7.b eElement, boolean open) {
            if (open) {
                b.this.f28262g.M(eElement);
            }
        }
    }

    public class f implements View.OnClickListener {
        public f() {
        }

        @Override
        public void onClick(View v10) {
            b.this.f28260e.dismiss();
        }
    }

    public class g implements View.OnClickListener {
        public g() {
        }

        @Override
        public void onClick(View v10) {
            b.this.f28260e.dismiss();
            StringBuilder sb2 = new StringBuilder();
            com.itsmagic.engine.Core.Components.ProjectController.a aVar = W7.b.f27302b;
            sb2.append(com.itsmagic.engine.Core.Components.ProjectController.a.S(b.this.f28258c));
            sb2.append("/");
            sb2.append(b.this.f28264i);
            sb2.append("/");
            sb2.append(b.this.f28263h);
            sb2.append(".");
            sb2.append(b.this.f28261f.c());
            b.this.f28261f.onSelected(sb2.toString());
        }
    }

    public class h implements Yc.d {
        public h() {
        }

        @Override
        public boolean a(File file) {
            return !file.isDirectory();
        }
    }

    public class i implements Yc.d {
        public i() {
        }

        @Override
        public boolean a(File file) {
            return !file.isDirectory();
        }
    }

    public class j implements Yc.d {
        public j() {
        }

        @Override
        public boolean a(File file) {
            return file.isDirectory();
        }
    }

    public b(View root, Activity activity, Yc.b classInterface, Xc.a exporterListener) {
        this.f28256a = root;
        this.f28257b = activity;
        this.f28258c = activity;
        this.f28260e = classInterface;
        this.f28261f = exporterListener;
        this.f28259d = LayoutInflater.from(activity);
        u(root);
    }

    public static void v(Activity activity, Xc.a exporterListener) {
        if (exporterListener == null) {
            throw new NullPointerException("pickerListener can't be null");
        }
        if (activity == null) {
            throw new NullPointerException("activity can't be null");
        }
        C16272b c16272b = new C16272b(R.layout.file_exporter, activity);
        c16272b.n(new a(activity, c16272b, exporterListener));
        c16272b.l(false);
        c16272b.p();
    }

    public final List<j7.b> p() {
        LinkedList linkedList = new LinkedList();
        com.itsmagic.engine.Core.Components.ProjectController.a aVar = W7.b.f27302b;
        s(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f28258c), linkedList, new j());
        return linkedList;
    }

    public final List<j7.b> q() {
        LinkedList linkedList = new LinkedList();
        com.itsmagic.engine.Core.Components.ProjectController.a aVar = W7.b.f27302b;
        s(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f28258c), linkedList, new i());
        return linkedList;
    }

    public final List<j7.b> r(j7.b element) {
        LinkedList linkedList = new LinkedList();
        s(element.f6679a, linkedList, new h());
        return linkedList;
    }

    public final void s(String path, List<j7.b> elements, Yc.d listFilter) {
        File file = new File(Tc.b.o(path));
        if (!file.isDirectory()) {
            throw new IllegalArgumentException("File " + path + " is not a folder");
        }
        File[] listFiles = file.listFiles();
        if (listFiles != null) {
            for (File file2 : listFiles) {
                if (file2 != null && listFilter.a(file2)) {
                    if (file2.isDirectory()) {
                        j7.d dVar = new j7.d(file2.getName(), file2.getAbsolutePath());
                        File[] listFiles2 = file2.listFiles();
                        if (listFiles2 == null || listFiles2.length <= 0) {
                            dVar.r(false);
                        } else {
                            dVar.r(false);
                            int length = listFiles2.length;
                            int i10 = 0;
                            while (true) {
                                if (i10 >= length) {
                                    break;
                                }
                                if (listFilter.a(listFiles2[i10])) {
                                    dVar.r(true);
                                    break;
                                }
                                i10++;
                            }
                        }
                        elements.add(dVar);
                    } else {
                        j7.c cVar = new j7.c(file2.getName(), file2.getAbsolutePath(), null);
                        File file3 = new File(Tc.b.O(file2.getAbsolutePath()) + ".meta");
                        if (file3.exists()) {
                            File[] listFiles3 = file3.listFiles();
                            if (listFiles3 == null || listFiles3.length <= 0) {
                                cVar.r(false);
                            } else {
                                cVar.r(false);
                                int length2 = listFiles3.length;
                                int i11 = 0;
                                while (true) {
                                    if (i11 >= length2) {
                                        break;
                                    }
                                    if (listFilter.a(listFiles3[i11])) {
                                        cVar.r(true);
                                        break;
                                    }
                                    i11++;
                                }
                            }
                        } else {
                            cVar.r(false);
                        }
                        elements.add(cVar);
                    }
                }
            }
        }
    }

    public final List<j7.b> t(j7.b folder) {
        LinkedList linkedList = new LinkedList();
        s(folder.f6679a, linkedList, new C0785b());
        return linkedList;
    }

    public final void u(View view) {
        TextView textView = (TextView) view.findViewById(R.id.tittle);
        this.f28265j = textView;
        textView.setText(new C3867a("Select file destination", "Selecione o destino do arquivo").toString());
        this.f28266k = (TextInputEditText) view.findViewById(R.id.folder);
        this.f28268m = (TextInputLayout) view.findViewById(R.id.foldertil);
        this.f28267l = (TextInputEditText) view.findViewById(R.id.filename);
        String b10 = this.f28261f.b();
        this.f28263h = b10;
        this.f28267l.setText(b10);
        this.f28267l.setOnEditorActionListener(new c());
        this.f28264i = this.f28261f.a();
        this.f28266k.setText((this.f28264i + "/" + this.f28263h + "." + this.f28261f.c()).replace("//", "/"));
        this.f28266k.setOnEditorActionListener(new d());
        h7.e eVar = new h7.e((LinearLayout) view.findViewById(R.id.filesexplorer), this.f28257b);
        this.f28262g = eVar;
        eVar.E(new e());
        this.f28262g.q();
        ((Button) view.findViewById(R.id.cancel)).setOnClickListener(new f());
        ((Button) view.findViewById(R.id.done)).setOnClickListener(new g());
        String str = this.f28264i;
        if (str == null || str.isEmpty()) {
            return;
        }
        h7.e eVar2 = this.f28262g;
        String str2 = this.f28264i;
        StringBuilder sb2 = new StringBuilder();
        com.itsmagic.engine.Core.Components.ProjectController.a aVar = W7.b.f27302b;
        sb2.append(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f28258c));
        sb2.append("/");
        eVar2.p(str2, sb2.toString());
    }
}
