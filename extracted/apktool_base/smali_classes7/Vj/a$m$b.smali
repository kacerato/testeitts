.class public LVj/a$m$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LVj/a$m;->c([BII)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:[B

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:LVj/a$m;


# direct methods
.method public constructor <init>(LVj/a$m;[BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LVj/a$m$b;->d:LVj/a$m;

    iput-object p2, p0, LVj/a$m$b;->a:[B

    iput p3, p0, LVj/a$m$b;->b:I

    iput p4, p0, LVj/a$m$b;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Integer;
    .locals 4

    :try_start_0
    iget-object v0, p0, LVj/a$m$b;->d:LVj/a$m;

    invoke-static {v0}, LVj/a$m;->a(LVj/a$m;)Ljava/io/InputStream;

    move-result-object v0

    iget-object v1, p0, LVj/a$m$b;->a:[B

    iget v2, p0, LVj/a$m$b;->b:I

    iget v3, p0, LVj/a$m$b;->c:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "unable to read random source"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, LVj/a$m$b;->a()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
