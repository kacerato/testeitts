package I7;

import Ic.C2630i;
import J7.a;
import N7.c;
import android.annotation.SuppressLint;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.itsmagic.engine.Activities.Editor.Panels.Marketplace.BackendAPI.Objects.Product;
import com.itsmagic.engine.Activities.Editor.Utils.C12736d;
import com.itsmagic.engine2.R;

public class a {

    public Product.UserReview f8894a;

    public LayoutInflater f8895b;

    public Context f8896c;

    public class ViewOnLongClickListenerC0228a implements View.OnLongClickListener {
        public ViewOnLongClickListenerC0228a() {
        }

        @Override
        public boolean onLongClick(View view) {
            C2630i.s(a.this.f8894a.d());
            c.v0("Comment copied to clipboard");
            return true;
        }
    }

    public class b implements a.c {
        public b() {
        }

        @Override
        public void a(int index) {
        }
    }

    public a(Product.UserReview userReview, Context context) {
        this.f8894a = userReview;
        this.f8895b = LayoutInflater.from(context);
        this.f8896c = context;
    }

    @SuppressLint({"SetTextI18n"})
    public final View b(View commentView) {
        long e10 = this.f8894a.e();
        TextView textView = (TextView) commentView.findViewById(R.id.text_review);
        textView.setText(this.f8894a.d());
        textView.setOnLongClickListener(new ViewOnLongClickListenerC0228a());
        ((TextView) commentView.findViewById(R.id.date)).setText(C12736d.b(this.f8894a.b()));
        LinearLayout linearLayout = (LinearLayout) commentView.findViewById(R.id.user_display);
        linearLayout.removeAllViews();
        linearLayout.addView(new L7.b(this.f8896c).a(new L7.a(e10, this.f8894a.f(), this.f8894a.g(), null)));
        a.d dVar = new a.d();
        dVar.f10305b.d(4, 4);
        dVar.f10304a.d(8, 16);
        J7.a aVar = new J7.a(this.f8896c, new b(), dVar);
        aVar.i(false);
        aVar.e(this.f8894a.c(), (LinearLayout) commentView.findViewById(R.id.stars));
        return commentView;
    }

    public View c() {
        return b(this.f8895b.inflate(R.layout.marketplace_product_single_review_module, (ViewGroup) null));
    }

    public View d(View commentReview) {
        return b(commentReview);
    }
}
