package se;

import ag.a0;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import qe.C15078g;
import qe.InterfaceC15093v;
import qe.InterfaceC15096y;
import re.AbstractC15172b;
import te.C15400b;
import te.C15409k;

public class C15286g implements InterfaceC15096y {
    @Override
    @Nullable
    public Object a(@NonNull C15078g c15078g, @NonNull InterfaceC15093v interfaceC15093v) {
        if (AbstractC15172b.a.BULLET == AbstractC15172b.f108896a.g(interfaceC15093v)) {
            return new C15400b(c15078g.h(), AbstractC15172b.f108897b.g(interfaceC15093v).intValue());
        }
        return new C15409k(c15078g.h(), String.valueOf(AbstractC15172b.f108898c.g(interfaceC15093v)) + "." + a0.f32065g);
    }
}
