.class public Lcom/google/common/io/BaseEncoding$b;
.super LD2/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/io/BaseEncoding;->j(LD2/j;)LD2/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LD2/j;

.field public final synthetic b:Lcom/google/common/io/BaseEncoding;


# direct methods
.method public constructor <init>(Lcom/google/common/io/BaseEncoding;LD2/j;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/io/BaseEncoding$b;->b:Lcom/google/common/io/BaseEncoding;

    iput-object p2, p0, Lcom/google/common/io/BaseEncoding$b;->a:LD2/j;

    invoke-direct {p0}, LD2/f;-><init>()V

    return-void
.end method


# virtual methods
.method public m()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$b;->b:Lcom/google/common/io/BaseEncoding;

    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$b;->a:LD2/j;

    invoke-virtual {v1}, LD2/j;->m()Ljava/io/Reader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/io/BaseEncoding;->k(Ljava/io/Reader;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
