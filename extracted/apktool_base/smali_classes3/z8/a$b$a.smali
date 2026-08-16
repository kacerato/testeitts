.class public Lz8/a$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz8/a$b;->onClick(Lcn/pedant/SweetAlert/SweetAlertDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lz8/a$b;


# direct methods
.method public constructor <init>(Lz8/a$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lz8/a$b$a;->b:Lz8/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lz8/a$b$a;->b:Lz8/a$b;

    iget-object v1, v0, Lz8/a$b;->c:Ljava/io/File;

    iget-object v0, v0, Lz8/a$b;->d:Lz8/b;

    invoke-static {v1, v0}, Lz8/a;->a(Ljava/io/File;Lz8/b;)Z

    move-result v0

    new-instance v1, Lz8/a$b$a$a;

    invoke-direct {v1, p0, v0}, Lz8/a$b$a$a;-><init>(Lz8/a$b$a;Z)V

    invoke-static {v1}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method
