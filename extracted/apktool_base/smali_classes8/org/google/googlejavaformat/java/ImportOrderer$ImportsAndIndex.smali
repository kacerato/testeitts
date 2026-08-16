.class Lorg/google/googlejavaformat/java/ImportOrderer$ImportsAndIndex;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/google/googlejavaformat/java/ImportOrderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImportsAndIndex"
.end annotation


# instance fields
.field final imports:Lcom/google/common/collect/x1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/x1<",
            "Lorg/google/googlejavaformat/java/ImportOrderer$Import;",
            ">;"
        }
    .end annotation
.end field

.field final index:I


# direct methods
.method public constructor <init>(Lcom/google/common/collect/x1;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "imports",
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/x1<",
            "Lorg/google/googlejavaformat/java/ImportOrderer$Import;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/google/googlejavaformat/java/ImportOrderer$ImportsAndIndex;->imports:Lcom/google/common/collect/x1;

    iput p2, p0, Lorg/google/googlejavaformat/java/ImportOrderer$ImportsAndIndex;->index:I

    return-void
.end method
