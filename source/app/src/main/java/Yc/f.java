package Yc;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.itsmagic.engine2.R;
import java.util.List;
import jd.C13823b;
import org.jetbrains.annotations.NotNull;

public class f extends RecyclerView.Adapter<b> {

    public Context f29964a;

    public List<C13823b> f29965b;

    public LayoutInflater f29966c;

    public Yc.a f29967d;

    public int f29968e;

    public class a implements View.OnClickListener {

        public final int f29969b;

        public a(final int val$position) {
            this.f29969b = val$position;
        }

        @Override
        public void onClick(View v10) {
            f.this.j(this.f29969b);
        }
    }

    public class b extends RecyclerView.ViewHolder {

        public TextView f29971a;

        public LinearLayout f29972b;

        public ImageView f29973c;

        public ImageView f29974d;

        public LinearLayout f29975e;

        public TextView f29976f;

        public ImageView f29977g;

        public b(View itemView) {
            super(itemView);
            this.f29976f = (TextView) itemView.findViewById(R.id.path);
            this.f29971a = (TextView) itemView.findViewById(R.id.name);
            this.f29972b = (LinearLayout) itemView.findViewById(R.id.leftspace);
            this.f29973c = (ImageView) itemView.findViewById(R.id.open);
            this.f29974d = (ImageView) itemView.findViewById(R.id.icon);
            this.f29975e = (LinearLayout) itemView.findViewById(R.id.linearTopbar);
            this.f29977g = (ImageView) itemView.findViewById(R.id.iconAlpha);
        }
    }

    public f(Context context, List<C13823b> objects, Yc.a callbacks) {
        this.f29964a = context;
        this.f29966c = LayoutInflater.from(context);
        this.f29965b = objects;
        this.f29967d = callbacks;
    }

    public void g() {
        this.f29964a = null;
        List<C13823b> list = this.f29965b;
        if (list != null) {
            list.clear();
        }
        this.f29965b = null;
        this.f29966c = null;
    }

    @Override
    public int getItemCount() {
        return this.f29965b.size();
    }

    @Override
    public void onBindViewHolder(@NotNull b holder, int p10) {
        C13823b c13823b = this.f29965b.get(p10);
        if (c13823b == null) {
            return;
        }
        String str = Tc.b.u(c13823b.f()) + "/";
        holder.f29971a.setText(c13823b.f92879b);
        holder.f29976f.setText(str);
        holder.f29975e.setOnClickListener(new a(p10));
        if (c13823b.h() == C13823b.a.Texture) {
            holder.f29977g.setVisibility(0);
        } else {
            holder.f29977g.setVisibility(8);
        }
        C13823b.l(holder.f29974d, c13823b, this.f29964a);
        if (this.f29968e == p10) {
            holder.f29975e.setBackgroundColor(this.f29964a.getResources().getColor(R.color.colorPrimary));
        } else {
            holder.f29975e.setBackgroundResource(0);
        }
    }

    @Override
    @NotNull
    public b onCreateViewHolder(@NotNull ViewGroup parent, int viewType) {
        return new b(this.f29966c.inflate(R.layout.fileselector_single, parent, false));
    }

    public void j(int position) {
        int i10 = this.f29968e;
        this.f29968e = position;
        notifyItemChanged(i10);
        int i11 = this.f29968e;
        if (i10 != i11) {
            notifyItemChanged(i11);
        }
        if (this.f29967d != null) {
            if (this.f29965b.size() <= 0 || this.f29965b.size() <= position) {
                this.f29967d.b(null);
            } else {
                this.f29967d.b(this.f29965b.get(position));
            }
        }
    }

    public void k(List<C13823b> objects) {
        l(objects, true);
        this.f29968e = 0;
        j(0);
    }

    public void l(List<C13823b> objects, boolean notify) {
        this.f29965b = objects;
        if (notify) {
            notifyDataSetChanged();
        }
        this.f29968e = 0;
        j(0);
    }
}
