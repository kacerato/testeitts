.class public Lcom/itsmagic/engine/Activities/Editor/Utils/q$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Activities/Editor/Utils/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Activities/Editor/Utils/q$c$b;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "billing/"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/HashMap;Lhd/d;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "params",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lhd/d;",
            ")V"
        }
    .end annotation

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Led/c;

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Utils/q$c$a;

    invoke-direct {v2, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$c$a;-><init>(Lhd/d;)V

    invoke-direct {v1, v2}, Led/c;-><init>(Lhd/d;)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i;->f()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$g;->a()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    new-instance p1, Lhd/e;

    const-string v2, "billing/"

    const-string v3, "requestPurchase"

    invoke-static {v2, v3}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-boolean v3, Lcom/itsmagic/engine/Activities/Editor/Utils/q;->a:Z

    xor-int/lit8 v3, v3, 0x1

    invoke-direct {p1, v2, p0, v0, v3}, Lhd/e;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Z)V

    invoke-virtual {v1, p1}, Led/c;->d(Lhd/e;)V

    return-void
.end method
