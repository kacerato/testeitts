.class public final Lgg/D$a$a;
.super LBf/d;
.source "SourceFile"


# annotations
.annotation runtime LBf/f;
    c = "kotlinx.coroutines.channels.ReceiveChannel$DefaultImpls"
    f = "Channel.kt"
    i = {}
    l = {
        0x174
    }
    m = "receiveOrNull"
    n = {}
    s = {}
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgg/D$a;->i(Lgg/D;Lyf/f;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "LBf/d;"
    }
.end annotation


# instance fields
.field public synthetic b:Ljava/lang/Object;

.field public c:I


# direct methods
.method public constructor <init>(Lyf/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyf/f<",
            "-",
            "Lgg/D$a$a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LBf/d;-><init>(Lyf/f;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iput-object p1, p0, Lgg/D$a$a;->b:Ljava/lang/Object;

    iget p1, p0, Lgg/D$a$a;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lgg/D$a$a;->c:I

    const/4 p1, 0x0

    invoke-static {p1, p0}, Lgg/D$a;->i(Lgg/D;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
