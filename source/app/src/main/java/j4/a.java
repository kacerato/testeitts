package J4;

import Ic.C2630i;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine.Activities.Editor.Utils.AdvancedTextView.AdvancedTextView;
import com.itsmagic.engine.Core.Components.JCompiler.JavaMetaInfo;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import d8.j;
import dd.C12908b;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import n4.C14351c;
import r4.C15147a;
import w5.k;

public class a extends RecyclerView.Adapter<c> {

    public final List<J4.c> f10192a;

    public LayoutInflater f10193b;

    public Context f10194c;

    public class C0248a implements AdvancedTextView.e {
        public C0248a() {
        }

        @Override
        public void a(String tag, String text) {
            if (tag.endsWith(".java")) {
                JavaMetaInfo J10 = j.J(tag.substring(0, tag.indexOf(".java")));
                if (J10 != null) {
                    N7.c.D().B0(new C14351c(J10.f72511a));
                    return;
                }
                return;
            }
            if (tag.startsWith("open:")) {
                N7.c.D().B0(new k(tag.substring(5)));
            }
        }
    }

    public class b implements View.OnLongClickListener {

        public final J4.c f10196b;

        public class C0249a extends LinkedList<C12908b> {

            public class C0250a implements dd.d {
                public C0250a() {
                }

                @Override
                public void onSelected(View view) {
                    C2630i.s(b.this.f10196b.f10211a);
                }
            }

            public C0249a() {
                add(new C12908b("Copy line", new C0250a()));
            }
        }

        public b(final J4.c val$log) {
            this.f10196b = val$log;
        }

        @Override
        public boolean onLongClick(View v10) {
            Y6.a.F1(v10, C15147a.e.Below, new C0249a());
            return true;
        }
    }

    public class c extends RecyclerView.ViewHolder {

        public AdvancedTextView f10200a;

        public View f10201b;

        public c(View itemView) {
            super(itemView);
            this.f10201b = itemView;
            this.f10200a = (AdvancedTextView) itemView.findViewById(R.id.message);
        }
    }

    public a(Context context) {
        this(context, new SteppedArrayList());
    }

    public void g(List<J4.c> logList) {
        int size = this.f10192a.size();
        int size2 = logList.size();
        this.f10192a.addAll(logList);
        notifyItemRangeInserted(size, size2);
    }

    @Override
    public int getItemCount() {
        return this.f10192a.size();
    }

    public List<J4.c> h(int start, int end) {
        if (start < 0) {
            throw new ArrayIndexOutOfBoundsException(start);
        }
        if (this.f10192a.size() > end) {
            return new SteppedArrayList(this.f10192a.subList(start, end));
        }
        throw new ArrayIndexOutOfBoundsException(end);
    }

    @Override
    public void onBindViewHolder(c holder, int position) {
        J4.c cVar = this.f10192a.get(position);
        if (cVar == null) {
            return;
        }
        holder.f10200a.setTextColor(Theme.i(Theme.T.TERMINAL_TEXT_COLOR));
        holder.f10200a.setAllowLinkClicks(true);
        holder.f10200a.setText(cVar.f10211a);
        holder.f10200a.setTapListener(new C0248a());
        holder.f10200a.setOnLongClickListener(new b(cVar));
    }

    @Override
    public c onCreateViewHolder(ViewGroup parent, int viewType) {
        return new c(this.f10193b.inflate(R.layout.console_log, parent, false));
    }

    public void k() {
        int size = this.f10192a.size();
        this.f10192a.clear();
        if (size > 0) {
            notifyItemRangeRemoved(0, size);
        }
    }

    public void l(J4.c log) {
        int indexOf = this.f10192a.indexOf(log);
        if (indexOf >= 0) {
            this.f10192a.remove(indexOf);
            notifyItemRemoved(indexOf);
        }
    }

    public void m(List<J4.c> logList) {
        Iterator<J4.c> it = logList.iterator();
        while (it.hasNext()) {
            l(it.next());
        }
    }

    public void n(List<J4.c> outList) {
        int size = this.f10192a.size();
        this.f10192a.clear();
        notifyItemRangeRemoved(0, size);
        g(outList);
    }

    public a(Context context, List<J4.c> logs) {
        LinkedList linkedList = new LinkedList();
        this.f10192a = linkedList;
        this.f10193b = LayoutInflater.from(context);
        linkedList.clear();
        linkedList.addAll(logs);
        this.f10194c = context;
    }
}
