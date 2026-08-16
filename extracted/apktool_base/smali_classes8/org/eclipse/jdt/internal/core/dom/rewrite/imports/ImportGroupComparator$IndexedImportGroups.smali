.class final Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportGroupComparator$IndexedImportGroups;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportGroupComparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IndexedImportGroups"
.end annotation


# instance fields
.field final staticImportGroupByName:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportGroupComparator$ImportGroup;",
            ">;"
        }
    .end annotation
.end field

.field final typeImportGroupsByName:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportGroupComparator$ImportGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/NavigableMap;Ljava/util/NavigableMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/NavigableMap<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportGroupComparator$ImportGroup;",
            ">;",
            "Ljava/util/NavigableMap<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportGroupComparator$ImportGroup;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportGroupComparator$IndexedImportGroups;->typeImportGroupsByName:Ljava/util/NavigableMap;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportGroupComparator$IndexedImportGroups;->staticImportGroupByName:Ljava/util/NavigableMap;

    return-void
.end method
