.class public Lij/d$a;
.super Ljava/io/OutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lij/d;-><init>(Ljava/io/InputStream;Ljava/lang/Long;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lij/d;


# direct methods
.method public constructor <init>(Lij/d;)V
    .locals 0

    iput-object p1, p0, Lij/d$a;->b:Lij/d;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lij/d$a;->b:Lij/d;

    iget-object v1, v0, Lij/d;->d:[B

    iget v2, v0, Lij/d;->h:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lij/d;->h:I

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    return-void
.end method
