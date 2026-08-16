package H4;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.itsmagic.engine2.R;
import e7.AbstractC13043b;

public class c extends AbstractC13043b {

    public TextView f8120b;

    public TextView f8121c;

    public ImageView f8122d;

    public View f8123e;

    public c(View viewBinding) {
        super(viewBinding);
        this.f8120b = (TextView) this.itemView.findViewById(R.id.tittle);
        this.f8121c = (TextView) this.itemView.findViewById(R.id.desc);
        this.f8122d = (ImageView) this.itemView.findViewById(R.id.icon);
        this.f8123e = this.itemView.findViewById(R.id.menu);
    }

    @Override
    public void b(View root) {
    }
}
