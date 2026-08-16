.class public Lle/h$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhe/S;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lle/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final a:Ljava/io/ObjectOutput;

.field public b:Ljava/io/IOException;

.field public final synthetic c:Lle/h;


# direct methods
.method public constructor <init>(Lle/h;Ljava/io/ObjectOutput;)V
    .locals 0

    iput-object p1, p0, Lle/h$d;->c:Lle/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lle/h$d;->a:Ljava/io/ObjectOutput;

    return-void
.end method


# virtual methods
.method public a(I)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lle/h$d;->a:Ljava/io/ObjectOutput;

    iget-object v1, p0, Lle/h$d;->c:Lle/h;

    iget-object v1, v1, LWd/b0;->l:[Ljava/lang/Object;

    aget-object p1, v1, p1

    invoke-interface {v0, p1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    iput-object p1, p0, Lle/h$d;->b:Ljava/io/IOException;

    const/4 p1, 0x0

    return p1
.end method

.method public b()Ljava/io/IOException;
    .locals 1

    iget-object v0, p0, Lle/h$d;->b:Ljava/io/IOException;

    return-object v0
.end method
