.class public Lpa/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/InputDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpa/b;->m0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:J

.field public final synthetic b:LJAVARuntime/InputDialog$Type;

.field public final synthetic c:Lpa/b;


# direct methods
.method public constructor <init>(Lpa/b;JLJAVARuntime/InputDialog$Type;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$currentSession",
            "val$dialogType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lpa/b$b;->c:Lpa/b;

    iput-wide p2, p0, Lpa/b$b;->a:J

    iput-object p4, p0, Lpa/b$b;->b:LJAVARuntime/InputDialog$Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    iget-object v0, p0, Lpa/b$b;->c:Lpa/b;

    iget-wide v1, p0, Lpa/b$b;->a:J

    invoke-static {v0, v1, v2}, Lpa/b;->H0(Lpa/b;J)V

    return-void
.end method

.method public onFinish(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    iget-object v0, p0, Lpa/b$b;->c:Lpa/b;

    iget-wide v1, p0, Lpa/b$b;->a:J

    iget-object v3, p0, Lpa/b$b;->b:LJAVARuntime/InputDialog$Type;

    invoke-static {v0, v1, v2, p1, v3}, Lpa/b;->G0(Lpa/b;JLjava/lang/String;LJAVARuntime/InputDialog$Type;)V

    return-void
.end method
