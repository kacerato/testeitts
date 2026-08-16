.class public final Lgg/j$o;
.super Lkotlin/jvm/internal/O;
.source "SourceFile"

# interfaces
.implements LMf/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgg/j;->p1(Lgg/j;Ljava/lang/Object;Ljava/lang/Object;LMf/a;LMf/p;LMf/a;LMf/r;ILjava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBufferedChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel$sendImpl$1\n*L\n1#1,3055:1\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nBufferedChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel$sendImpl$1\n*L\n1#1,3055:1\n*E\n"
    }
.end annotation


# static fields
.field public static final b:Lgg/j$o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lgg/j$o;

    invoke-direct {v0}, Lgg/j$o;-><init>()V

    sput-object v0, Lgg/j$o;->b:Lgg/j$o;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/O;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Lgg/q;ILjava/lang/Object;J)Ljava/lang/Void;
    .locals 0
    .param p1    # Lgg/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgg/q<",
            "TE;>;ITE;J)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "unexpected"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object v1, p1

    check-cast v1, Lgg/q;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result v2

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    move-object v0, p0

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lgg/j$o;->b(Lgg/q;ILjava/lang/Object;J)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
