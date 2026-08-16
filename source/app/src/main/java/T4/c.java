package t4;

import android.content.Context;
import android.text.method.LinkMovementMethod;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.itsmagic.engine.Activities.Editor.Panels.AIAgent.AIAgentChatMessage;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import java.util.List;
import k0.i;
import qe.AbstractC15076e;
import ue.C15602d;
import xe.C16098a;

@i
public class c extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

    public static final int f116978d = 1;

    public static final int f116979e = 2;

    public static final int f116980f = 3;

    public static final int f116981g = 4;

    public final LayoutInflater f116982a;

    public final AbstractC15076e f116983b;

    public List<AIAgentChatMessage> f116984c = new SteppedArrayList();

    public final class b extends RecyclerView.ViewHolder {

        public final TextView f116985a;

        public final void b(AIAgentChatMessage message) {
            String e10 = (message == null || message.e() == null) ? "" : message.e();
            if (message == null || message.f() != 4) {
                TextView textView = this.f116985a;
                textView.setTextColor(ContextCompat.getColor(textView.getContext(), R.color.theme_high_text_color));
                c.this.f116983b.k(this.f116985a, e10);
            } else {
                TextView textView2 = this.f116985a;
                textView2.setTextColor(ContextCompat.getColor(textView2.getContext(), R.color.theme_error));
                this.f116985a.setText(e10);
            }
        }

        public b(@NonNull View itemView) {
            super(itemView);
            TextView textView = (TextView) itemView.findViewById(R.id.message_text);
            this.f116985a = textView;
            textView.setMovementMethod(LinkMovementMethod.getInstance());
            textView.setTextIsSelectable(true);
        }
    }

    public final class C2012c extends RecyclerView.ViewHolder {

        public final TextView f116987a;

        public final ProgressBar f116988b;

        public void b(AIAgentChatMessage message) {
            this.f116987a.setText((message == null || message.e() == null) ? "" : message.e());
            this.f116988b.setIndeterminate(true);
        }

        public C2012c(@NonNull View itemView) {
            super(itemView);
            this.f116987a = (TextView) itemView.findViewById(R.id.message_text);
            this.f116988b = (ProgressBar) itemView.findViewById(R.id.loading_progress);
        }
    }

    public final class d extends RecyclerView.ViewHolder {

        public final TextView f116990a;

        public void b(AIAgentChatMessage message) {
            this.f116990a.setText((message == null || message.e() == null) ? "" : message.e());
        }

        public d(@NonNull View itemView) {
            super(itemView);
            this.f116990a = (TextView) itemView.findViewById(R.id.message_text);
        }
    }

    public c(Context context) {
        this.f116982a = LayoutInflater.from(context);
        this.f116983b = AbstractC15076e.a(context).a(C15602d.l(context)).a(C16098a.n()).build();
    }

    @Override
    public int getItemCount() {
        return this.f116984c.size();
    }

    @Override
    public int getItemViewType(int position) {
        AIAgentChatMessage aIAgentChatMessage = this.f116984c.get(position);
        if (aIAgentChatMessage != null) {
            return aIAgentChatMessage.f();
        }
        return 2;
    }

    public void h(AIAgentChatMessage message) {
        if (message == null) {
            return;
        }
        this.f116984c.add(message);
        notifyItemInserted(this.f116984c.size() - 1);
    }

    public final int i(int type) {
        for (int size = this.f116984c.size() - 1; size >= 0; size--) {
            AIAgentChatMessage aIAgentChatMessage = this.f116984c.get(size);
            if (aIAgentChatMessage != null && aIAgentChatMessage.f() == type) {
                return size;
            }
        }
        return -1;
    }

    public final int j(String id2) {
        if (id2 == null) {
            return -1;
        }
        for (int size = this.f116984c.size() - 1; size >= 0; size--) {
            if (id2.equals(this.f116984c.get(size).d())) {
                return size;
            }
        }
        return -1;
    }

    public List<AIAgentChatMessage> k() {
        return new SteppedArrayList(this.f116984c);
    }

    public boolean l() {
        int i10 = i(3);
        if (i10 < 0) {
            return false;
        }
        this.f116984c.remove(i10);
        notifyItemRemoved(i10);
        return true;
    }

    public void m(List<AIAgentChatMessage> messages) {
        if (messages == null) {
            messages = new SteppedArrayList<>();
        }
        this.f116984c = messages;
        notifyDataSetChanged();
    }

    public boolean n(String rawText) {
        int i10 = i(2);
        if (i10 < 0) {
            return false;
        }
        this.f116984c.get(i10).k(rawText);
        notifyItemChanged(i10);
        return true;
    }

    public boolean o(String id2, String rawText, boolean streaming) {
        int j10 = j(id2);
        if (j10 < 0) {
            return false;
        }
        AIAgentChatMessage aIAgentChatMessage = this.f116984c.get(j10);
        aIAgentChatMessage.k(rawText);
        aIAgentChatMessage.l(streaming);
        notifyItemChanged(j10);
        return true;
    }

    @Override
    public void onBindViewHolder(@NonNull RecyclerView.ViewHolder holder, int position) {
        AIAgentChatMessage aIAgentChatMessage = this.f116984c.get(position);
        if (holder instanceof d) {
            ((d) holder).b(aIAgentChatMessage);
        } else if (holder instanceof C2012c) {
            ((C2012c) holder).b(aIAgentChatMessage);
        } else if (holder instanceof b) {
            ((b) holder).b(aIAgentChatMessage);
        }
    }

    @Override
    @NonNull
    public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        return viewType == 1 ? new d(this.f116982a.inflate(R.layout.ai_agent_message_user, parent, false)) : viewType == 3 ? new C2012c(this.f116982a.inflate(R.layout.ai_agent_message_loading, parent, false)) : new b(this.f116982a.inflate(R.layout.ai_agent_message_ai, parent, false));
    }
}
