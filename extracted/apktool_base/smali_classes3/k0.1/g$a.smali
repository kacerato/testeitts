.class public final Lk0/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/x;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lk0/g$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lk0/m;)V
    .locals 1
    .param p1    # Lk0/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    const-string v0, "level"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/google/ai/edge/litertlm/LiteRtLmJni;->a:Lcom/google/ai/edge/litertlm/LiteRtLmJni;

    invoke-virtual {p1}, Lk0/m;->c()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/ai/edge/litertlm/LiteRtLmJni;->nativeSetMinLogSeverity(I)V

    return-void
.end method
