switch (global.volume_level)
{
	case 0:
		audio_sound_gain(_bkg_music, 0, 0);
	break;
	case 0.25:
		audio_sound_gain(_bkg_music, 0.25, 500);
	case 0.5:
		audio_sound_gain(_bkg_music, 0.5, 500);
	break;
	case 0.75:
		audio_sound_gain(_bkg_music, 0.75, 500);
	break;
	case 1:
		audio_sound_gain(_bkg_music, 1, 500);
	break;
	default:
		audio_sound_gain(_bkg_music, 0.5, 500);
	break;
}