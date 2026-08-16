.class public final Li1/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/app/Application;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Li1/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Li1/q0;
    .locals 3

    iget-object v0, p0, Li1/h;->a:Landroid/app/Application;

    const-class v1, Landroid/app/Application;

    invoke-static {v0, v1}, Li1/o0;->b(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Li1/k;

    iget-object v1, p0, Li1/h;->a:Landroid/app/Application;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Li1/k;-><init>(Landroid/app/Application;Li1/g;)V

    return-object v0
.end method

.method public final b(Landroid/app/Application;)Li1/h;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Li1/h;->a:Landroid/app/Application;

    return-object p0
.end method
