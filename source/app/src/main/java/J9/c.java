package J9;

import android.content.Context;
import android.view.View;
import android.widget.TextView;
import com.itsmagic.engine.Engines.Engine.Curve.Curve;
import com.itsmagic.engine.Engines.Engine.Curve.graphkit.EditGraphView;
import com.itsmagic.engine2.R;

public class c {

    public class a implements D5.e {

        public final String f10311a;

        public a(final String val$tittle) {
            this.f10311a = val$tittle;
        }

        @Override
        public void onCreate(View view, Context context, C5.b entry) {
            Curve curve = (Curve) entry.f2073h;
            EditGraphView editGraphView = (EditGraphView) view.findViewById(R.id.curveView);
            ((TextView) view.findViewById(R.id.tittle)).setText(this.f10311a);
            new e(curve, editGraphView);
        }
    }

    public class b implements D5.e {

        public final String f10312a;

        public b(final String val$tittle) {
            this.f10312a = val$tittle;
        }

        @Override
        public void onCreate(View view, Context context, C5.b entry) {
            Curve curve = (Curve) entry.f2073h;
            EditGraphView editGraphView = (EditGraphView) view.findViewById(R.id.curveView);
            ((TextView) view.findViewById(R.id.tittle)).setText(this.f10312a);
            new e(curve, editGraphView);
        }
    }

    public static C5.b a(String tittle, Curve curve, Context context) {
        return new C5.b(new a(tittle), R.layout.inspector_component_slcurve, curve);
    }

    public static C5.b b(String tittle, Curve curve, Context context) {
        return new C5.b(new b(tittle), R.layout.inspector_component_slcurve_match, curve);
    }
}
