.class public abstract enum Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$ImportContainerSorting;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "ImportContainerSorting"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$ImportContainerSorting;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BY_PACKAGE:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$ImportContainerSorting;

.field public static final enum BY_PACKAGE_AND_CONTAINING_TYPE:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$ImportContainerSorting;

.field private static final synthetic ENUM$VALUES:[Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$ImportContainerSorting;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$ImportContainerSorting$1;

    const-string v1, "BY_PACKAGE_AND_CONTAINING_TYPE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$ImportContainerSorting$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$ImportContainerSorting;->BY_PACKAGE_AND_CONTAINING_TYPE:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$ImportContainerSorting;

    new-instance v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$ImportContainerSorting$2;

    const-string v3, "BY_PACKAGE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$ImportContainerSorting$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$ImportContainerSorting;->BY_PACKAGE:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$ImportContainerSorting;

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$ImportContainerSorting;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$ImportContainerSorting;->ENUM$VALUES:[Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$ImportContainerSorting;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$ImportContainerSorting;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$ImportContainerSorting;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$ImportContainerSorting;
    .locals 1

    const-class v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$ImportContainerSorting;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$ImportContainerSorting;

    return-object p0
.end method

.method public static values()[Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$ImportContainerSorting;
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$ImportContainerSorting;->ENUM$VALUES:[Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$ImportContainerSorting;

    array-length v1, v0

    new-array v2, v1, [Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$ImportContainerSorting;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public abstract createContainerComparator(Lorg/eclipse/jdt/internal/core/JavaProject;)Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/core/JavaProject;",
            ")",
            "Ljava/util/Comparator<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;",
            ">;"
        }
    .end annotation
.end method
