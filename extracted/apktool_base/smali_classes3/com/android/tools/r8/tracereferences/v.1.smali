.class public final synthetic Lcom/android/tools/r8/tracereferences/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/tracereferences/v;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/tracereferences/v;->b:Ljava/util/Map;

    check-cast p1, Lcom/android/tools/r8/diagnostic/DefinitionClassContext;

    invoke-static {v0, p1}, Lcom/android/tools/r8/tracereferences/TraceReferencesCheckConsumer;->r(Ljava/util/Map;Lcom/android/tools/r8/diagnostic/DefinitionClassContext;)V

    return-void
.end method
