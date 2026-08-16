package I4;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.itsmagic.engine2.R;
import e7.AbstractC13043b;

public class f extends AbstractC13043b {

    public TextView f8835b;

    public TextView f8836c;

    public TextView f8837d;

    public TextView f8838e;

    public ImageView f8839f;

    public LinearLayout f8840g;

    public View f8841h;

    public f(View viewBinding) {
        super(viewBinding);
        this.f8835b = (TextView) this.itemView.findViewById(R.id.tittle);
        this.f8836c = (TextView) this.itemView.findViewById(R.id.action);
        this.f8837d = (TextView) this.itemView.findViewById(R.id.size);
        this.f8838e = (TextView) this.itemView.findViewById(R.id.unit);
        this.f8839f = (ImageView) this.itemView.findViewById(R.id.icon);
        this.f8840g = (LinearLayout) this.itemView.findViewById(R.id.toucharea);
        this.f8841h = this.itemView.findViewById(R.id.arrow);
    }

    @Override
    public void b(View root) {
    }
}
