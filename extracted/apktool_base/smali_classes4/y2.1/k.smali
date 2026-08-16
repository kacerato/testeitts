.class public final Ly2/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lv2/b;
    emulated = true
.end annotation

.annotation runtime Ly2/f;
.end annotation


# static fields
.field public static final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[C>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ly2/k$a;

    invoke-direct {v0}, Ly2/k$a;-><init>()V

    sput-object v0, Ly2/k;->a:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()[C
    .locals 1

    sget-object v0, Ly2/k;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    return-object v0
.end method
