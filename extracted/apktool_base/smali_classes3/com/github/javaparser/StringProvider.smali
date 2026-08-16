.class public Lcom/github/javaparser/StringProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/Provider;


# instance fields
.field private final m_nLen:I

.field private m_nPos:I

.field private m_sStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "sStr"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/github/javaparser/StringProvider;->m_nPos:I

    iput-object p1, p0, Lcom/github/javaparser/StringProvider;->m_sStr:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lcom/github/javaparser/StringProvider;->m_nLen:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/javaparser/StringProvider;->m_sStr:Ljava/lang/String;

    return-void
.end method

.method public read([CII)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "aDest",
            "nOfs",
            "nLen"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/github/javaparser/StringProvider;->m_nLen:I

    iget v1, p0, Lcom/github/javaparser/StringProvider;->m_nPos:I

    sub-int/2addr v0, v1

    if-gtz v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    array-length v2, p1

    sub-int/2addr v2, p2

    if-ge p3, v2, :cond_1

    goto :goto_0

    :cond_1
    move p3, v2

    :goto_0
    if-ge v0, p3, :cond_2

    goto :goto_1

    :cond_2
    move v0, p3

    :goto_1
    iget-object p3, p0, Lcom/github/javaparser/StringProvider;->m_sStr:Ljava/lang/String;

    add-int v2, v1, v0

    invoke-virtual {p3, v1, v2, p1, p2}, Ljava/lang/String;->getChars(II[CI)V

    iget p1, p0, Lcom/github/javaparser/StringProvider;->m_nPos:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/github/javaparser/StringProvider;->m_nPos:I

    return v0
.end method
