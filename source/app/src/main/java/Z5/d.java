package Z5;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.itsmagic.engine2.R;
import e7.AbstractC13043b;

public class d extends AbstractC13043b {

    public View f30771b;

    public View f30772c;

    public TextView f30773d;

    public TextView f30774e;

    public TextView f30775f;

    public ImageView f30776g;

    public View f30777h;

    public d(View v10) {
        super(v10);
        this.f30771b = v10;
        this.f30772c = v10.findViewById(R.id.productView);
        this.f30773d = (TextView) v10.findViewById(R.id.name);
        this.f30775f = (TextView) v10.findViewById(R.id.price);
        this.f30776g = (ImageView) v10.findViewById(R.id.icon);
        this.f30777h = v10.findViewById(R.id.promotion_layout);
        this.f30774e = (TextView) v10.findViewById(R.id.percent_descont);
    }

    @Override
    public void b(View root) {
    }
}
