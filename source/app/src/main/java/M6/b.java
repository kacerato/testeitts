package M6;

import K6.f;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.List;

public class b {

    public String f14567a;

    public String f14568b;

    public boolean f14569c;

    public boolean f14570d;

    public boolean f14571e;

    public boolean f14572f;

    public boolean f14573g;

    public String f14574h;

    public int f14575i;

    public String f14576j;

    public String f14577k;

    public String f14578l;

    public String f14579m;

    public String f14581o;

    public boolean f14582p;

    public List<String> f14580n = new SteppedArrayList();

    public a f14583q = new a();

    public static class a {

        public String f14584a;

        public String f14585b;

        public int f14586c;

        public int f14587d;
    }

    public static b a(f c10, String lineText, String lineSuffix, int lineNumber, int cursorPosition) {
        b bVar = new b();
        bVar.f14567a = c10.f10886a;
        bVar.f14568b = c10.f10888c;
        bVar.f14575i = c10.f10899n;
        bVar.f14569c = c10.f10893h;
        bVar.f14570d = c10.f10894i;
        bVar.f14571e = c10.f10895j;
        bVar.f14572f = c10.f10896k;
        bVar.f14573g = c10.f10897l;
        bVar.f14574h = c10.f10900o;
        bVar.f14576j = c10.f10891f;
        bVar.f14577k = c10.f10889d;
        bVar.f14578l = c10.f10890e;
        bVar.f14579m = c10.f10887b;
        bVar.f14580n = c10.f10892g == null ? new SteppedArrayList() : new SteppedArrayList(c10.f10892g);
        a aVar = bVar.f14583q;
        aVar.f14586c = lineNumber;
        aVar.f14584a = lineText;
        aVar.f14585b = lineSuffix;
        aVar.f14587d = cursorPosition;
        return bVar;
    }
}
