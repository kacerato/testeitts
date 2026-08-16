package com.google.android.gms.auth.api.identity;

import android.accounts.Account;
import androidx.annotation.Nullable;
import com.google.android.gms.auth.api.identity.RevokeAccessRequest;
import com.google.android.gms.common.api.Scope;
import java.util.List;

public final class u extends RevokeAccessRequest.a {

    public List f60973a;

    public Account f60974b;

    public String f60975c;

    public u() {
    }

    @Override
    public final RevokeAccessRequest a() {
        if (this.f60973a != null && this.f60974b != null) {
            return new RevokeAccessRequest(this.f60973a, this.f60974b, this.f60975c);
        }
        StringBuilder sb2 = new StringBuilder();
        if (this.f60973a == null) {
            sb2.append(" scopes");
        }
        if (this.f60974b == null) {
            sb2.append(" account");
        }
        throw new IllegalStateException("Missing required properties:".concat(sb2.toString()));
    }

    @Override
    public final RevokeAccessRequest.a b(Account account) {
        if (account == null) {
            throw new NullPointerException("Null account");
        }
        this.f60974b = account;
        return this;
    }

    @Override
    public final RevokeAccessRequest.a c(List<Scope> list) {
        if (list == null) {
            throw new NullPointerException("Null scopes");
        }
        this.f60973a = list;
        return this;
    }

    @Override
    public final RevokeAccessRequest.a d(@Nullable String str) {
        this.f60975c = str;
        return this;
    }

    public u(RevokeAccessRequest revokeAccessRequest) {
        this.f60973a = revokeAccessRequest.t();
        this.f60974b = revokeAccessRequest.h();
        this.f60975c = revokeAccessRequest.b0();
    }
}
