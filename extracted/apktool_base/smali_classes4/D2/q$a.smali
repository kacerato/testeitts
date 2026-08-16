.class public LD2/q$a;
.super LD2/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LD2/q;-><init>(IZLjava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LD2/q;


# direct methods
.method public constructor <init>(LD2/q;)V
    .locals 0

    iput-object p1, p0, LD2/q$a;->a:LD2/q;

    invoke-direct {p0}, LD2/f;-><init>()V

    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 2

    :try_start_0
    iget-object v0, p0, LD2/q$a;->a:LD2/q;

    invoke-virtual {v0}, LD2/q;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :goto_0
    return-void
.end method

.method public m()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LD2/q$a;->a:LD2/q;

    invoke-static {v0}, LD2/q;->a(LD2/q;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
