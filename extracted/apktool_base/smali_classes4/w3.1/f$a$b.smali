.class public Lw3/f$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw3/f$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lw3/f$a;


# direct methods
.method public constructor <init>(Lw3/f$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lw3/f$a$b;->b:Lw3/f$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lw3/f$a$b;->b:Lw3/f$a;

    iget-object v0, v0, Lw3/f$a;->c:Lw3/f$c;

    const-string v1, "Failed to load imported image"

    invoke-interface {v0, v1}, Lw3/f$c;->onError(Ljava/lang/String;)V

    return-void
.end method
