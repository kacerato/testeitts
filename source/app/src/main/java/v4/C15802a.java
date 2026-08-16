package v4;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.recyclerview.widget.RecyclerView;
import b3.s;
import cn.pedant.SweetAlert.SweetAlertDialog;
import com.google.android.material.timepicker.ChipTextInputComboView;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Engines.Engine.Animation.AnimationData;
import com.itsmagic.engine.Engines.Engine.Animation.Frame;
import com.itsmagic.engine.Engines.Engine.Animation.Timeline;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import dd.C12908b;
import java.util.List;
import org.jetbrains.annotations.NotNull;
import org.openjdk.tools.doclint.DocLint;
import r4.C15147a;

public class C15802a extends RecyclerView.Adapter<d> {

    public Context f121195a;

    public LayoutInflater f121197c;

    public h f121198d;

    public int f121200f;

    public int f121201g;

    public final List<C15803b> f121196b = new SteppedArrayList();

    public int f121199e = Nc.b.k0(16.0f);

    public class C2052a extends AbstractViewOnClickListenerC12733a {

        public final int f121202b;

        public C2052a(final int val$position) {
            this.f121202b = val$position;
        }

        @Override
        public void click(View v10) {
            C15802a.this.n(this.f121202b);
        }
    }

    public class b implements View.OnLongClickListener {

        public final C15803b f121204b;

        public class C2053a extends SteppedArrayList<C12908b> {

            public class C2054a implements dd.d {

                public class DialogInterfaceOnClickListenerC2055a implements DialogInterface.OnClickListener {

                    public final EditText f121208b;

                    public DialogInterfaceOnClickListenerC2055a(final EditText val$input) {
                        this.f121208b = val$input;
                    }

                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        N7.c.Y();
                        int x12 = Nc.b.x1(this.f121208b.getText().toString(), -1);
                        if (x12 <= -1) {
                            Toast.makeText(C15802a.this.f121195a, "Invalid keyframe Time", 0).show();
                            return;
                        }
                        b.this.f121204b.f121231b.x(x12);
                        AnimationData animationData = b.this.f121204b.f121233d;
                        if (animationData != null) {
                            animationData.m();
                        }
                        com.itsmagic.engine.Activities.Editor.Panels.Animation.AnimationTimeLine.a.W2();
                    }
                }

                public class DialogInterfaceOnClickListenerC2056b implements DialogInterface.OnClickListener {
                    public DialogInterfaceOnClickListenerC2056b() {
                    }

                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        N7.c.Y();
                        dialog.cancel();
                    }
                }

                public C2054a() {
                }

                @Override
                public void onSelected(View v10) {
                    AlertDialog.Builder builder = new AlertDialog.Builder(C15802a.this.f121195a);
                    builder.setTitle("Change keyframe time");
                    EditText editText = new EditText(C15802a.this.f121195a);
                    editText.setInputType(64);
                    editText.setText("" + b.this.f121204b.f121231b.i());
                    builder.setView(editText);
                    builder.setPositiveButton(C15802a.this.f121195a.getResources().getString(R.string.activity_editor_ok), new DialogInterfaceOnClickListenerC2055a(editText));
                    builder.setNegativeButton(C15802a.this.f121195a.getResources().getString(R.string.activity_editor_cancel), new DialogInterfaceOnClickListenerC2056b());
                    builder.show();
                }
            }

            public class C2057b implements dd.d {

                public class DialogInterfaceOnClickListenerC2058a implements DialogInterface.OnClickListener {

                    public final EditText f121212b;

                    public DialogInterfaceOnClickListenerC2058a(final EditText val$input) {
                        this.f121212b = val$input;
                    }

                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        N7.c.Y();
                        int x12 = Nc.b.x1(this.f121212b.getText().toString(), -1);
                        if (x12 <= -1) {
                            Toast.makeText(C15802a.this.f121195a, "Invalid keyframe Time", 0).show();
                            return;
                        }
                        Frame frame = b.this.f121204b.f121231b;
                        frame.x(frame.i() + x12);
                        AnimationData animationData = b.this.f121204b.f121233d;
                        if (animationData != null) {
                            animationData.m();
                        }
                        com.itsmagic.engine.Activities.Editor.Panels.Animation.AnimationTimeLine.a.W2();
                    }
                }

                public class DialogInterfaceOnClickListenerC2059b implements DialogInterface.OnClickListener {
                    public DialogInterfaceOnClickListenerC2059b() {
                    }

                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        N7.c.Y();
                        dialog.cancel();
                    }
                }

                public C2057b() {
                }

                @Override
                public void onSelected(View v10) {
                    AlertDialog.Builder builder = new AlertDialog.Builder(C15802a.this.f121195a);
                    builder.setTitle("Move forward step quantity");
                    EditText editText = new EditText(C15802a.this.f121195a);
                    editText.setInputType(64);
                    editText.setText("3");
                    builder.setView(editText);
                    builder.setPositiveButton(C15802a.this.f121195a.getResources().getString(R.string.activity_editor_ok), new DialogInterfaceOnClickListenerC2058a(editText));
                    builder.setNegativeButton(C15802a.this.f121195a.getResources().getString(R.string.activity_editor_cancel), new DialogInterfaceOnClickListenerC2059b());
                    builder.show();
                }
            }

            public class c implements dd.d {

                public class DialogInterfaceOnClickListenerC2060a implements DialogInterface.OnClickListener {

                    public final EditText f121216b;

                    public DialogInterfaceOnClickListenerC2060a(final EditText val$input) {
                        this.f121216b = val$input;
                    }

                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        N7.c.Y();
                        int x12 = Nc.b.x1(this.f121216b.getText().toString(), -1);
                        if (x12 <= -1) {
                            Toast.makeText(C15802a.this.f121195a, "Invalid keyframe Time", 0).show();
                            return;
                        }
                        Frame frame = b.this.f121204b.f121231b;
                        frame.x(frame.i() - x12);
                        AnimationData animationData = b.this.f121204b.f121233d;
                        if (animationData != null) {
                            animationData.m();
                        }
                        com.itsmagic.engine.Activities.Editor.Panels.Animation.AnimationTimeLine.a.W2();
                    }
                }

                public class DialogInterfaceOnClickListenerC2061b implements DialogInterface.OnClickListener {
                    public DialogInterfaceOnClickListenerC2061b() {
                    }

                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        N7.c.Y();
                        dialog.cancel();
                    }
                }

                public c() {
                }

                @Override
                public void onSelected(View v10) {
                    AlertDialog.Builder builder = new AlertDialog.Builder(C15802a.this.f121195a);
                    builder.setTitle("Move back step quantity");
                    EditText editText = new EditText(C15802a.this.f121195a);
                    editText.setInputType(64);
                    editText.setText("3");
                    builder.setView(editText);
                    builder.setPositiveButton(C15802a.this.f121195a.getResources().getString(R.string.activity_editor_ok), new DialogInterfaceOnClickListenerC2060a(editText));
                    builder.setNegativeButton(C15802a.this.f121195a.getResources().getString(R.string.activity_editor_cancel), new DialogInterfaceOnClickListenerC2061b());
                    builder.show();
                }
            }

            public class d implements dd.d {

                public class C2062a implements SweetAlertDialog.OnSweetClickListener {

                    public final SweetAlertDialog f121220a;

                    public C2062a(final SweetAlertDialog val$dialog) {
                        this.f121220a = val$dialog;
                    }

                    @Override
                    public void onClick(SweetAlertDialog sweetAlertDialog) {
                        Timeline timeline = b.this.f121204b.f121232c;
                        if (timeline != null) {
                            timeline.f().remove(b.this.f121204b.f121231b);
                            AnimationData animationData = b.this.f121204b.f121233d;
                            if (animationData != null) {
                                animationData.m();
                            }
                        }
                        this.f121220a.dismissWithAnimation();
                        com.itsmagic.engine.Activities.Editor.Panels.Animation.AnimationTimeLine.a.W2();
                    }
                }

                public class C2063b implements SweetAlertDialog.OnSweetClickListener {

                    public final SweetAlertDialog f121222a;

                    public C2063b(final SweetAlertDialog val$dialog) {
                        this.f121222a = val$dialog;
                    }

                    @Override
                    public void onClick(SweetAlertDialog sweetAlertDialog) {
                        this.f121222a.dismissWithAnimation();
                    }
                }

                public d() {
                }

                @Override
                public void onSelected(View v10) {
                    SweetAlertDialog sweetAlertDialog = new SweetAlertDialog(C15802a.this.f121195a, 3);
                    sweetAlertDialog.setTitle("Delete!");
                    sweetAlertDialog.setContentText("Delete this keyframe?");
                    sweetAlertDialog.setConfirmText("Yes");
                    sweetAlertDialog.setConfirmClickListener(new C2062a(sweetAlertDialog));
                    sweetAlertDialog.setCancelText("Cancel");
                    sweetAlertDialog.setCancelClickListener(new C2063b(sweetAlertDialog));
                    sweetAlertDialog.show();
                }
            }

            public C2053a() {
                add(new C12908b("Change time", new C2054a()));
                add(new C12908b("Move forward", new C2057b()));
                add(new C12908b("Move back", new c()));
                add(new C12908b("Delete keyframe", new d()));
            }
        }

        public b(final C15803b val$keyFrame) {
            this.f121204b = val$keyFrame;
        }

        @Override
        public boolean onLongClick(View v10) {
            Y6.a.F1(v10, C15147a.e.Left, new C2053a());
            return false;
        }
    }

    public class c implements View.OnLongClickListener {
        public c() {
        }

        @Override
        public boolean onLongClick(View v10) {
            return false;
        }
    }

    public class d extends RecyclerView.ViewHolder {

        public TextView f121225a;

        public LinearLayout f121226b;

        public ImageView f121227c;

        public ImageView f121228d;

        public d(View itemView) {
            super(itemView);
            this.f121225a = (TextView) itemView.findViewById(R.id.time);
            this.f121226b = (LinearLayout) itemView.findViewById(R.id.keyframe);
            this.f121227c = (ImageView) itemView.findViewById(R.id.bar);
            this.f121228d = (ImageView) itemView.findViewById(R.id.key);
        }
    }

    public C15802a(Context context, h callbacks, int framesPerSecond) {
        this.f121195a = context;
        this.f121197c = LayoutInflater.from(context);
        this.f121198d = callbacks;
        this.f121200f = framesPerSecond;
    }

    @Override
    public int getItemCount() {
        return this.f121196b.size();
    }

    public void h(List<C15803b> objects) {
        int size = this.f121196b.size();
        this.f121196b.addAll(objects);
        try {
            notifyItemRangeInserted(size - 1, objects.size() - 1);
        } catch (Exception unused) {
        }
    }

    public void i() {
        this.f121195a = null;
        List<C15803b> list = this.f121196b;
        if (list != null) {
            list.clear();
        }
        this.f121196b.clear();
        this.f121197c = null;
        this.f121198d = null;
    }

    public int j() {
        return this.f121200f;
    }

    public int k() {
        return this.f121199e;
    }

    @Override
    public void onBindViewHolder(@NotNull d holder, int p10) {
        C15803b c15803b = this.f121196b.get(p10);
        if (c15803b == null) {
            return;
        }
        String v02 = Nc.b.v0(c15803b.f121230a / this.f121200f, 2);
        if (v02.contains(".")) {
            v02 = v02.replace(".", s.f32937c);
        } else if (v02.contains(DocLint.SEPARATOR)) {
            v02 = v02.replace(DocLint.SEPARATOR, s.f32937c);
        }
        if (v02.endsWith(ChipTextInputComboView.b.f65192c) || v02.endsWith("50")) {
            holder.f121225a.setText(v02);
            holder.f121225a.setVisibility(0);
            p(holder, Nc.b.l0(32.0f, this.f121195a));
        } else {
            holder.f121225a.setVisibility(8);
            if (c15803b.f121231b != null) {
                p(holder, Nc.b.N(Nc.b.k0(12.0f), this.f121199e));
            } else {
                p(holder, this.f121199e);
            }
        }
        if (p10 == this.f121201g) {
            holder.f121227c.setVisibility(0);
        } else {
            holder.f121227c.setVisibility(8);
        }
        holder.f121226b.setOnClickListener(new C2052a(p10));
        if (c15803b.f121231b != null) {
            holder.f121228d.setVisibility(0);
            holder.f121226b.setOnLongClickListener(new b(c15803b));
        } else {
            holder.f121228d.setVisibility(8);
            holder.f121226b.setOnLongClickListener(new c());
        }
    }

    @Override
    @NotNull
    public d onCreateViewHolder(@NotNull ViewGroup parent, int viewType) {
        return new d(this.f121197c.inflate(R.layout.atl_keyframe, parent, false));
    }

    public void n(int frame) {
        s(frame);
        h hVar = this.f121198d;
        if (hVar != null) {
            hVar.a(this.f121201g);
        }
    }

    public void o(int framesPerSecond) {
        this.f121200f = framesPerSecond;
    }

    public final void p(@NotNull d holder, int size) {
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) holder.f121226b.getLayoutParams();
        layoutParams.width = size;
        holder.f121226b.setLayoutParams(layoutParams);
    }

    public void q(List<C15803b> objects) {
        this.f121196b.clear();
        this.f121196b.addAll(objects);
        try {
            notifyDataSetChanged();
        } catch (Exception unused) {
        }
    }

    public void r(int pinSize) {
        if (this.f121199e != pinSize) {
            this.f121199e = pinSize;
            try {
                notifyDataSetChanged();
            } catch (Exception unused) {
            }
        }
    }

    public void s(int frame) {
        int i10 = this.f121201g;
        this.f121201g = frame;
        try {
            notifyItemChanged(i10);
            notifyItemChanged(this.f121201g);
        } catch (Exception unused) {
        }
    }
}
