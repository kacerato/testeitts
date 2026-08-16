.class public Lwb/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwb/h;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lwb/h;


# direct methods
.method public constructor <init>(Lwb/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lwb/h$a;->b:Lwb/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lwb/h$a;->b:Lwb/h;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lwb/h;->c(Lwb/h;Z)Z

    iget-object v0, p0, Lwb/h$a;->b:Lwb/h;

    invoke-static {v0}, Lwb/h;->d(Lwb/h;)V

    return-void
.end method
