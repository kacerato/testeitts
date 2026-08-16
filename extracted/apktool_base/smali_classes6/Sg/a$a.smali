.class public LSg/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LSg/a;-><init>(Lokhttp3/C;Lokhttp3/J;Ljava/util/Random;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LSg/a;


# direct methods
.method public constructor <init>(LSg/a;)V
    .locals 0

    iput-object p1, p0, LSg/a$a;->b:LSg/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :goto_0
    :try_start_0
    iget-object v0, p0, LSg/a$a;->b:LSg/a;

    invoke-virtual {v0}, LSg/a;->y()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, LSg/a$a;->b:LSg/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, LSg/a;->n(Ljava/lang/Exception;Lokhttp3/E;)V

    :cond_0
    return-void
.end method
