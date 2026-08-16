package I4;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.itsmagic.engine2.R;
import e7.AbstractC13043b;

public class b extends AbstractC13043b {

    public TextView f8796b;

    public TextView f8797c;

    public TextView f8798d;

    public TextView f8799e;

    public LinearLayout f8800f;

    public View f8801g;

    public View f8802h;

    public b(View viewBinding) {
        super(viewBinding);
        this.f8796b = (TextView) this.itemView.findViewById(R.id.tittle);
        this.f8797c = (TextView) this.itemView.findViewById(R.id.action);
        this.f8798d = (TextView) this.itemView.findViewById(R.id.size);
        this.f8799e = (TextView) this.itemView.findViewById(R.id.unit);
        this.f8800f = (LinearLayout) this.itemView.findViewById(R.id.toucharea);
        this.f8802h = this.itemView.findViewById(R.id.arrow);
        this.f8801g = this.itemView.findViewById(R.id.promotion);
    }

    @Override
    public void b(View root) {
    }
}
