require(pacman)
p_load(dynaSpec)

tuneR::readWave("BARS_concat_song_4_tat.wav")
#Output heavily filtered black and white spectrogram
dynaSpec::prep_static_ggspectro(soundFile="BARS_concat_song_4_tat.wav",colPal = c("white","black"),xLim=6.26,crop = 6.26,yLim = c(1.5,7),ampTrans = 20,savePNG = T,specWidth = 13,specHeight = 2,ovlp = 90,colbins=50)

#output more nuanced color spectrogram for dynamic spectrogram
for_vid <- dynaSpec::prep_static_ggspectro(soundFile="BARS_concat_song_4_tat.wav",xLim=6.26,yLim = c(1.5,7),ampTrans = 4,savePNG = T,specWidth = 13, specHeight = 2,ovlp = 90,colbins=50,crop = 6.26)

dynaSpec::paged_spectro(for_vid)
