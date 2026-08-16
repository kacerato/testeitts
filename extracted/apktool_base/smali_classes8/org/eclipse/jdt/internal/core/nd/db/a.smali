.class public final synthetic Lorg/eclipse/jdt/internal/core/nd/db/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/core/runtime/preferences/IEclipsePreferences$IPreferenceChangeListener;


# instance fields
.field public final synthetic a:Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;


# direct methods
.method public synthetic constructor <init>(Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/a;->a:Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;

    return-void
.end method


# virtual methods
.method public final a(Lorg/eclipse/core/runtime/preferences/IEclipsePreferences$PreferenceChangeEvent;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/a;->a:Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;

    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;->a(Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;Lorg/eclipse/core/runtime/preferences/IEclipsePreferences$PreferenceChangeEvent;)V

    return-void
.end method
