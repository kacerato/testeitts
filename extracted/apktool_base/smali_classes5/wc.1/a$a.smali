.class public Lwc/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM9/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwc/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lwc/a;


# direct methods
.method public constructor <init>(Lwc/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lwc/a$a;->a:Lwc/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation

    iget-object v0, p0, Lwc/a$a;->a:Lwc/a;

    invoke-static {v0}, Lwc/a;->g(Lwc/a;)Lwc/b$a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lwc/b$a;->a(J)V

    return-void
.end method
