.class public abstract enum Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$OriginalImportHandling;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "OriginalImportHandling"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$OriginalImportHandling;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DISCARD:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$OriginalImportHandling;

.field private static final synthetic ENUM$VALUES:[Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$OriginalImportHandling;

.field public static final enum PRESERVE_IN_ORDER:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$OriginalImportHandling;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$OriginalImportHandling$1;

    const-string v1, "DISCARD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$OriginalImportHandling$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$OriginalImportHandling;->DISCARD:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$OriginalImportHandling;

    new-instance v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$OriginalImportHandling$2;

    const-string v3, "PRESERVE_IN_ORDER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$OriginalImportHandling$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$OriginalImportHandling;->PRESERVE_IN_ORDER:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$OriginalImportHandling;

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$OriginalImportHandling;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$OriginalImportHandling;->ENUM$VALUES:[Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$OriginalImportHandling;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$OriginalImportHandling;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$OriginalImportHandling;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$OriginalImportHandling;
    .locals 1

    const-class v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$OriginalImportHandling;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$OriginalImportHandling;

    return-object p0
.end method

.method public static values()[Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$OriginalImportHandling;
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$OriginalImportHandling;->ENUM$VALUES:[Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$OriginalImportHandling;

    array-length v1, v0

    new-array v2, v1, [Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$OriginalImportHandling;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public abstract createImportAdder(Ljava/util/Comparator;)Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportAdder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;",
            ">;)",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportAdder;"
        }
    .end annotation
.end method

.method public abstract shouldFixAllLineDelimiters()Z
.end method

.method public abstract shouldRemoveOriginalImports()Z
.end method
