.class abstract Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final importName:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEntry;->importName:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;

    return-void
.end method


# virtual methods
.method public abstract asOriginalImportEntry()Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OriginalImportEntry;
.end method

.method public abstract isOriginal()Z
.end method
