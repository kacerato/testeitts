.class public Lcom/google/common/io/BaseEncoding$a;
.super LD2/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/io/BaseEncoding;->o(LD2/i;)LD2/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LD2/i;

.field public final synthetic b:Lcom/google/common/io/BaseEncoding;


# direct methods
.method public constructor <init>(Lcom/google/common/io/BaseEncoding;LD2/i;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/io/BaseEncoding$a;->b:Lcom/google/common/io/BaseEncoding;

    iput-object p2, p0, Lcom/google/common/io/BaseEncoding$a;->a:LD2/i;

    invoke-direct {p0}, LD2/e;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$a;->b:Lcom/google/common/io/BaseEncoding;

    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$a;->a:LD2/i;

    invoke-virtual {v1}, LD2/i;->b()Ljava/io/Writer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/io/BaseEncoding;->p(Ljava/io/Writer;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method
