.class public Ld7/a$i$c$d;
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

    iput-object p1, p0, Ld7/a$i$c$d;->b:Ld7/a$i$c;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance p1, Ldd/b;

    new-instance v0, Ld7/a$i$c$d$a;

    invoke-direct {v0, p0}, Ld7/a$i$c$d$a;-><init>(Ld7/a$i$c$d;)V

    const v1, 0x7f07006a

    const-string v2, "Build APK - Offline"

    invoke-direct {p1, v1, v2, v0}, Ldd/b;-><init>(ILjava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    new-instance v0, Ld7/a$i$c$d$b;

    invoke-direct {v0, p0}, Ld7/a$i$c$d$b;-><init>(Ld7/a$i$c$d;)V

    const v1, 0x7f070007

    const-string v2, "Build AAB - Offline"

    invoke-direct {p1, v1, v2, v0}, Ldd/b;-><init>(ILjava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
