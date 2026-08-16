.class public final synthetic Lcom/android/tools/r8/tracereferences/w;
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

    iput-object p1, p0, Lcom/android/tools/r8/tracereferences/w;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/tracereferences/w;->b:Ljava/util/Map;

    check-cast p1, Lcom/android/tools/r8/diagnostic/DefinitionFieldContext;

    invoke-static {v0, p1}, Lcom/android/tools/r8/tracereferences/TraceReferencesCheckConsumer;->l(Ljava/util/Map;Lcom/android/tools/r8/diagnostic/DefinitionFieldContext;)V

    return-void
.end method
