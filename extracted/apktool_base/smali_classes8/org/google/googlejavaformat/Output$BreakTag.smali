.class public final Lorg/google/googlejavaformat/Output$BreakTag;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/google/googlejavaformat/Output;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BreakTag"
.end annotation


# instance fields
.field taken:Lw2/C;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/C<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lw2/C;->a()Lw2/C;

    move-result-object v0

    iput-object v0, p0, Lorg/google/googlejavaformat/Output$BreakTag;->taken:Lw2/C;

    return-void
.end method


# virtual methods
.method public recordBroken(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "broken"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lw2/C;->f(Ljava/lang/Object;)Lw2/C;

    move-result-object p1

    iput-object p1, p0, Lorg/google/googlejavaformat/Output$BreakTag;->taken:Lw2/C;

    return-void
.end method

.method public wasBreakTaken()Z
    .locals 2

    iget-object v0, p0, Lorg/google/googlejavaformat/Output$BreakTag;->taken:Lw2/C;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lw2/C;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
