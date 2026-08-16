.class final Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportGroupComparator$ImportGroup;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportGroupComparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImportGroup"
.end annotation


# instance fields
.field private final index:I

.field private final name:Ljava/lang/String;

.field private final prefix:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportGroupComparator$ImportGroup;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportGroupComparator$ImportGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportGroupComparator$ImportGroup;->name:Ljava/lang/String;

    iput p2, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportGroupComparator$ImportGroup;->index:I

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportGroupComparator$ImportGroup;->prefix:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportGroupComparator$ImportGroup;

    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportGroupComparator$ImportGroup;->index:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportGroupComparator$ImportGroup;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefix()Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportGroupComparator$ImportGroup;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportGroupComparator$ImportGroup;->prefix:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportGroupComparator$ImportGroup;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportGroupComparator$ImportGroup;->getIndex()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportGroupComparator$ImportGroup;->getName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ImportGroup(%d:%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
