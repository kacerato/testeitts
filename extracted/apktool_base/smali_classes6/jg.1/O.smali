.class public interface abstract Ljg/O;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljg/O$a;
    }
.end annotation


# static fields
.field public static final a:Ljg/O$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljg/O$a;->a:Ljg/O$a;

    sput-object v0, Ljg/O;->a:Ljg/O$a;

    return-void
.end method


# virtual methods
.method public abstract a(Ljg/U;)Ljg/i;
    .param p1    # Ljg/U;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljg/U<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljg/i<",
            "Ljg/M;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
