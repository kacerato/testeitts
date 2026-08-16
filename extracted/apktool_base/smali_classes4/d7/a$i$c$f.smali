.class public Ld7/a$i$c$f;
.super Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld7/a$i$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList<",
        "Ldd/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ld7/a$i$c;


# direct methods
.method public constructor <init>(Ld7/a$i$c;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Ld7/a$i$c$f;->b:Ld7/a$i$c;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance p1, Ldd/b;

    new-instance v0, Ld7/a$i$c$f$a;

    invoke-direct {v0, p0}, Ld7/a$i$c$f$a;-><init>(Ld7/a$i$c$f;)V

    const v1, 0x7f070167

    const-string v2, "Class documentation"

    invoke-direct {p1, v1, v2, v0}, Ldd/b;-><init>(ILjava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->APP_DOCUMENTATION:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ld7/a$i$c$f$b;

    invoke-direct {v1, p0}, Ld7/a$i$c$f$b;-><init>(Ld7/a$i$c$f;)V

    const v2, 0x7f070134

    invoke-direct {p1, v2, v0, v1}, Ldd/b;-><init>(ILjava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->LEGAL_INFORMATION:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ld7/a$i$c$f$c;

    invoke-direct {v1, p0}, Ld7/a$i$c$f$c;-><init>(Ld7/a$i$c$f;)V

    const v2, 0x7f0701c9

    invoke-direct {p1, v2, v0, v1}, Ldd/b;-><init>(ILjava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
