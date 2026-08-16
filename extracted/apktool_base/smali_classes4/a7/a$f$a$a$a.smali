.class public La7/a$f$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La7/a$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La7/a$f$a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:La7/b;

.field public final synthetic b:La7/a$f$a$a;


# direct methods
.method public constructor <init>(La7/a$f$a$a;La7/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$3",
            "val$e"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, La7/a$f$a$a$a;->b:La7/a$f$a$a;

    iput-object p2, p0, La7/a$f$a$a$a;->a:La7/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lh4/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "version"
        }
    .end annotation

    new-instance v0, La7/a$f$a$a$a$a;

    invoke-direct {v0, p0, p1}, La7/a$f$a$a$a$a;-><init>(La7/a$f$a$a$a;Lh4/d;)V

    invoke-interface {p1, v0}, Lh4/d;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Lh4/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "version"
        }
    .end annotation

    invoke-interface {p1}, Lh4/d;->b()V

    iget-object v0, p0, La7/a$f$a$a$a;->b:La7/a$f$a$a;

    iget-object v0, v0, La7/a$f$a$a;->d:La7/a$f$a;

    iget-object v0, v0, La7/a$f$a;->a:La7/a$f;

    iget-object v0, v0, La7/a$f;->b:La7/a;

    invoke-static {v0}, La7/a;->v1(La7/a;)Le7/a;

    move-result-object v0

    iget-object v1, p0, La7/a$f$a$a$a;->a:La7/b;

    invoke-virtual {v0, v1}, Le7/a;->r(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "File removed from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lh4/d;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LN7/c;->v0(Ljava/lang/String;)V

    return-void
.end method

.method public c(Lh4/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "version"
        }
    .end annotation

    iget-object p1, p0, La7/a$f$a$a$a;->b:La7/a$f$a$a;

    iget-object p1, p1, La7/a$f$a$a;->d:La7/a$f$a;

    iget-object p1, p1, La7/a$f$a;->a:La7/a$f;

    iget-object p1, p1, La7/a$f;->b:La7/a;

    iget-object v0, p0, La7/a$f$a$a$a;->a:La7/b;

    invoke-virtual {p1, v0}, La7/a;->x1(La7/b;)V

    return-void
.end method
