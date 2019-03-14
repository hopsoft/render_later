import { Application } from 'stimulus';
import RenderLaterController from './render_later_controller';

const application = Application.start();
application.register('render-later', RenderLaterController);
