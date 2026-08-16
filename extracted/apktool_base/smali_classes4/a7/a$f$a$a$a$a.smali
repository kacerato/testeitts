.class public La7/a$f$a$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La7/a$f$a$a$a;->a(Lh4/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lh4/d;

.field public final synthetic c:La7/a$f$a$a$a;


# direct methods
.method public constructor <init>(La7/a$f$a$a$a;Lh4/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$4",
            "val$version"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, La7/a$f$a$a$a$a;->c:La7/a$f$a$a$a;

    iput-object p2, p0, La7/a$f$a$a$a$a;->b:Lh4/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "File reverted to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, La7/a$f$a$a$a$a;->b:Lh4/d;

    invoke-interface {v1}, Lh4/d;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LN7/c;->v0(Ljava/lang/String;)V

    iget-object v0, p0, La7/a$f$a$a$a$a;->c:La7/a$f$a$a$a;

    iget-object v0, v0, La7/a$f$a$a$a;->b:La7/a$f$a$a;

    iget-object v0, v0, La7/a$f$a$a;->d:La7/a$f$a;

    iget-object v0, v0, La7/a$f$a;->a:La7/a$f;

    iget-object v0, v0, La7/a$f;->b:La7/a;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    return-void
.end method
