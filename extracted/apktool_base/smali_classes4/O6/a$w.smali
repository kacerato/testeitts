.class public LO6/a$w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LO6/a;->g2(Ljava/lang/String;LO6/a$F;LO6/a$G;)LC5/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LO6/a$G;

.field public final synthetic b:LO6/a$F;

.field public final synthetic c:LO6/a;


# direct methods
.method public constructor <init>(LO6/a;LO6/a$G;LO6/a$F;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$setter",
            "val$getter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LO6/a$w;->c:LO6/a;

    iput-object p2, p0, LO6/a$w;->a:LO6/a$G;

    iput-object p3, p0, LO6/a$w;->b:LO6/a$F;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/itsmagic/engine/Engines/Utils/Variable;
    .locals 3

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    iget-object v1, p0, LO6/a$w;->b:LO6/a$F;

    invoke-interface {v1}, LO6/a$F;->get()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-direct {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "variable"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, LO6/a$w;->a:LO6/a$G;

    iget p1, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->int_value:I

    invoke-interface {v0, p1}, LO6/a$G;->b(I)V

    :cond_0
    return-void
.end method
