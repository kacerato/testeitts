package y4;

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

public class C16143a extends RecyclerView.Adapter<c> {

    public final List<C16146d> f129971a;

    public LayoutInflater f129972b;

    public Context f129973c;

    public class C2213a implements AdvancedTextView.e {
        public C2213a() {
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

        public final C16146d f129975b;

        public class C2214a extends LinkedList<C12908b> {

            public class C2215a implements dd.d {
                public C2215a() {
                }

                @Override
                public void onSelected(View view) {
                    C2630i.s(b.this.f129975b.f130002a);
                }
            }

            public C2214a() {
                add(new C12908b("Copy line", new C2215a()));
            }
        }

        public b(final C16146d val$log) {
            this.f129975b = val$log;
        }

        @Override
        public boolean onLongClick(View v10) {
            Y6.a.F1(v10, C15147a.e.Below, new C2214a());
            return true;
        }
    }

    public class c extends RecyclerView.ViewHolder {

        public AdvancedTextView f129979a;

        public View f129980b;

        public c(View itemView) {
            super(itemView);
            this.f129980b = itemView;
            this.f129979a = (AdvancedTextView) itemView.findViewById(R.id.message);
        }
    }

    public C16143a(Context context) {
        this(context, new SteppedArrayList());
    }

    public void g(List<C16146d> logList) {
        int size = this.f129971a.size();
        int size2 = logList.size();
        this.f129971a.addAll(logList);
        notifyItemRangeInserted(size, size2);
    }

    @Override
    public int getItemCount() {
        return this.f129971a.size();
    }

    public List<C16146d> h(int start, int end) {
        if (start < 0) {
            throw new ArrayIndexOutOfBoundsException(start);
        }
        if (this.f129971a.size() > end) {
            return new SteppedArrayList(this.f129971a.subList(start, end));
        }
        throw new ArrayIndexOutOfBoundsException(end);
    }

    @Override
    public void onBindViewHolder(c holder, int position) {
        C16146d c16146d = this.f129971a.get(position);
        if (c16146d == null) {
            return;
        }
        holder.f129979a.setTextColor(Theme.i(Theme.T.TERMINAL_TEXT_COLOR));
        holder.f129979a.setAllowLinkClicks(true);
        holder.f129979a.setText(c16146d.f130002a);
        holder.f129979a.setTapListener(new C2213a());
        holder.f129979a.setOnLongClickListener(new b(c16146d));
    }

    @Override
    public c onCreateViewHolder(ViewGroup parent, int viewType) {
        return new c(this.f129972b.inflate(R.layout.console_log, parent, false));
    }

    public void k() {
        int size = this.f129971a.size();
        this.f129971a.clear();
        if (size > 0) {
            notifyItemRangeRemoved(0, size);
        }
    }

    public void l(int count) {
        int min;
        if (count > 0 && (min = Math.min(count, this.f129971a.size())) > 0) {
            this.f129971a.subList(0, min).clear();
            notifyItemRangeRemoved(0, min);
        }
    }

    public void m(C16146d log) {
        int indexOf = this.f129971a.indexOf(log);
        if (indexOf >= 0) {
            this.f129971a.remove(indexOf);
            notifyItemRemoved(indexOf);
        }
    }

    public void n(List<C16146d> logList) {
        Iterator<C16146d> it = logList.iterator();
        while (it.hasNext()) {
            m(it.next());
        }
    }

    public void o(List<C16146d> outList) {
        int size = this.f129971a.size();
        this.f129971a.clear();
        notifyItemRangeRemoved(0, size);
        g(outList);
    }

    public C16143a(Context context, List<C16146d> logs) {
        LinkedList linkedList = new LinkedList();
        this.f129971a = linkedList;
        this.f129972b = LayoutInflater.from(context);
        linkedList.clear();
        linkedList.addAll(logs);
        this.f129973c = context;
    }
}
