.class public Lb8/f$c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb8/f$c;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lb8/f$c;


# direct methods
.method public constructor <init>(Lb8/f$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lb8/f$c$b;->b:Lb8/f$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lb8/f$c$b;->b:Lb8/f$c;

    iget-object v1, v0, Lb8/f$c;->b:Lb8/g;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lb8/f$c;->a:Landroid/app/Activity;

    invoke-interface {v1, v0}, Lb8/g;->b(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
