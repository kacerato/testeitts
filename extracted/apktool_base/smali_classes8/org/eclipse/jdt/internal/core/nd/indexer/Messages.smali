.class public Lorg/eclipse/jdt/internal/core/nd/indexer/Messages;
.super Lorg/eclipse/osgi/util/NLS;
.source "SourceFile"


# static fields
.field private static final BUNDLE_NAME:Ljava/lang/String; = "org.eclipse.jdt.internal.core.nd.indexer.messages"

.field public static Indexer_updating_index_job_name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "org.eclipse.jdt.internal.core.nd.indexer.messages"

    const-class v1, Lorg/eclipse/jdt/internal/core/nd/indexer/Messages;

    invoke-static {v0, v1}, Lorg/eclipse/osgi/util/NLS;->initializeMessages(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/osgi/util/NLS;-><init>()V

    return-void
.end method
