.class Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/core/nd/db/IBTreeComparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;-><init>(Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchKey;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$2;->this$0:Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lorg/eclipse/jdt/internal/core/nd/Nd;JJ)I
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$2;->this$0:Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;->searchKey:Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchKey;

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchKey;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Lorg/eclipse/jdt/internal/core/nd/db/IString;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$2;->this$0:Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;->searchKey:Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchKey;

    invoke-virtual {v1, p1, p4, p5}, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchKey;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Lorg/eclipse/jdt/internal/core/nd/db/IString;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/eclipse/jdt/internal/core/nd/db/IString;->compareCompatibleWithIgnoreCase(Lorg/eclipse/jdt/internal/core/nd/db/IString;)I

    move-result p1

    if-nez p1, :cond_0

    sub-long/2addr p2, p4

    invoke-static {p2, p3}, Ljava/lang/Long;->signum(J)I

    move-result p1

    :cond_0
    return p1
.end method
