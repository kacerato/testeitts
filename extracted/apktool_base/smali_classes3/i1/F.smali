.class public final synthetic Li1/F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Li1/I;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Li1/I;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li1/F;->b:Li1/I;

    iput-object p2, p0, Li1/F;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Li1/F;->b:Li1/I;

    iget-object v1, p0, Li1/F;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Li1/i0;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method
